class WebViewController < ActionController::API
  include ActionView::Layouts

  def home
    render html: '', layout: 'application'
  end
end
