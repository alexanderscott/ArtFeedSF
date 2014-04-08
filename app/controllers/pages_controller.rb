class PagesController < ApplicationController

  def index
    @tweets = Tweet.order('created_at DESC').limit(100).all
    @articles = Article.order('published DESC').limit(100).all
  end

  def sitemap
    path = Rails.root.join("public", "sitemaps", current_site.key, "sitemap.xml")
    if File.exists?(path)
      render xml: open(path).read
    else
      render text: "Sitemap not found.", status: :not_found
    end

  end

  def robots

  end

end
