json.extract! post, :id, :name, :emp_id, :SFID, :Last_Change, :Modified_At, :Message, :created_at, :updated_at
json.url post_url(post, format: :json)