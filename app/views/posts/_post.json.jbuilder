json.extract! post, :id, :company_name, :company_description, :category_id, :subcategory_id, :facebook_link, :instagram_link, :twitter_link, :website, :created_at, :updated_at
json.url post_url(post, format: :json)
