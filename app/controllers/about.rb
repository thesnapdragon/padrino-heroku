PadrinoHeroku::App.controllers :about do
  include Rack::IAmNotARobot::Helpers

  get :index do
    render "about"
  end

  post :send do
    if recaptcha_valid?
      render "about", locals: {success: true}
    else
      sleep 3
      render "about", locals: {success: false}
    end
  end

  get :send do
    redirect :about
  end
end
