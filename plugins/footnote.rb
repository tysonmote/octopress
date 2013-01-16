# encoding: utf-8
require_relative 'post_filters'

# Title: Footnotes Liquid Tag
# Author: Felipe Cypriano <felipe@cypriano.me>
# Modified: Tyson Tate <tyson@tysontate.com>
# Description: Make it easier to insert footnotes on your posts using <sup> and
# <a> tags.
#
# Usage:
#
#     Some things{% fn 1 %} are controversial{% fn 2 %}.
#
#     {% footnotes %}
#       {% footnote And people. %}
#       {% footnote Except for this statement. %}
#     {% endfootnotes%}
#
# HTML generated
#
#     Some things<sup id="fnref:1"><a href="#fn:1" rel="footnote">1</a></sup> are controversial<sup id="fnref:2"><a href="#fn:2" rel="footnote">2</a></sup>.
#
#     <div class="footnotes">
#       <ol>
#         <li id="fn:1">And people.<a href="#fnref:1" rev="footnote">↩</a></li>
#         <li id="fn:2">Except for this statement.<a href="#fnref:2" rev="footnote">↩</a></li>
#       </ol>
#     </div>
#

module Jekyll
  class FootnoteFilters < PostFilter
    def post_render(post)
      if post.is_a?( Jekyll::Post )
        id = post.slug
      else
        path = post.full_url.split('/')[3..-1]
        id = path.join('___').gsub(/_{3}?index\.[\w]+$/, '')
        id = 'index' if id == ''
      end
      post.content.gsub!(/FOOTNOTE_ID/, id)
    end
  end
end

module Footnote

  class ReferenceTag < Liquid::Tag
    def initialize(tag_name, ref, tokens)
      super
      @reference = ref.strip unless ref.nil?
    end

    def render(context)
      unless @reference.nil?
        "<sup id='fnref:FOOTNOTE_ID:#{@reference}'><a href='#fn:FOOTNOTE_ID:#{@reference}' rel='footnote'>#{@reference}</a></sup>"
      end
    end
  end

  class FootnotesBlock < Liquid::Block
    def initialize(tag_name, markup, tokens)
      @footnotes = []
      @current_reference = 1
      super
    end

    def render(context)
      <<-HTML
<div class="footnotes">
  <ol>
    #{@footnotes.join}
  </ol>
</div>
      HTML
    end

    def unknown_tag(name, params, tokens)
      if name == 'footnote'
        handle_fn_tag(params)
      else
        super
      end
    end

    private
    def handle_fn_tag(params)
      ref_text = params
      @footnotes << <<-HTML
        <li id="fn:FOOTNOTE_ID:#{@current_reference}">
          #{ref_text}<a href='#fnref:FOOTNOTE_ID:#{@current_reference}' rev='footnote'>↩</a>
        </li>
      HTML
      @current_reference += 1
    end
  end
end

Liquid::Template.register_tag('fn', Footnote::ReferenceTag)
Liquid::Template.register_tag('footnotes', Footnote::FootnotesBlock)
