RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  config.main_app_name = ["Gobierno Regional de Los Ríos", "FRIL"]

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  config.show_gravatar = false

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.total_columns_width = 1000

    config.model 'Observation' do
      visible false
      edit do
        configure :project do
          hide
        end
      end
      list do
        configure :project do
          hide
        end
      end
      create do
        configure :project do
          hide
        end
      end
      show do
        configure :project do
          hide
        end
      end
      export do
        configure :created_at do
          hide
        end
        configure :updated_at do
          hide
        end
        configure :project do
          hide
        end
      end
    end

    config.model 'Project' do
      list do
        field :name do
          pretty_value do
            value.titleize
          end
        end
        configure :id do
          hide
        end
        configure :user do
          hide
        end
        configure :created_at do
          hide
        end
        configure :updated_at do
          hide
        end
        configure :user do
          hide
        end
      end
      export do
        configure :user do
          hide
        end
        configure :file do
          hide
        end
        configure :attachment do
          hide
        end
        configure :created_at do
          hide
        end
        configure :updated_at do
          hide
        end
      end
      create do
        configure :visit_id do
          hide
        end
        configure :user do
          hide
        end
      end
      edit do
        configure :visit_id do
          hide
        end
        configure :user do
          hide
        end
      end
    end

    config.model 'User' do
      list do
        configure :id do
          hide
        end
        configure :reset_password_sent_at do
          hide
        end
        configure :remember_created_at do
          hide
        end
        configure :sign_in_count do
          hide
        end
        configure :current_sign_in_at do
          hide
        end
        configure :last_sign_in_at do
          hide
        end
        configure :current_sign_in_ip do
          hide
        end
        configure :last_sign_in_ip do
          hide
        end
        configure :created_at do
          hide
        end
        configure :updated_at do
          hide
        end
        configure :projects do
          hide
        end
      end
      show do
        configure :id do
          hide
        end
        configure :reset_password_sent_at do
          hide
        end
        configure :remember_created_at do
          hide
        end
        configure :sign_in_count do
          hide
        end
        configure :current_sign_in_at do
          hide
        end
        configure :last_sign_in_at do
          hide
        end
        configure :current_sign_in_ip do
          hide
        end
        configure :last_sign_in_ip do
          hide
        end
        configure :created_at do
          hide
        end
        configure :updated_at do
          hide
        end
        configure :projects do
          hide
        end
      end
      export do
        configure :id do
          hide
        end
        configure :reset_password_sent_at do
          hide
        end
        configure :remember_created_at do
          hide
        end
        configure :sign_in_count do
          hide
        end
        configure :current_sign_in_at do
          hide
        end
        configure :last_sign_in_at do
          hide
        end
        configure :current_sign_in_ip do
          hide
        end
        configure :last_sign_in_ip do
          hide
        end
        configure :created_at do
          hide
        end
        configure :updated_at do
          hide
        end
        configure :projects do
          hide
        end
      end
      create do
        configure :id do
          hide
        end
        configure :reset_password_sent_at do
          hide
        end
        configure :remember_created_at do
          hide
        end
        configure :sign_in_count do
          hide
        end
        configure :current_sign_in_at do
          hide
        end
        configure :last_sign_in_at do
          hide
        end
        configure :current_sign_in_ip do
          hide
        end
        configure :last_sign_in_ip do
          hide
        end
        configure :created_at do
          hide
        end
        configure :updated_at do
          hide
        end
        configure :projects do
          hide
        end
      end
      edit do
        configure :id do
          hide
        end
        configure :reset_password_sent_at do
          hide
        end
        configure :remember_created_at do
          hide
        end
        configure :sign_in_count do
          hide
        end
        configure :current_sign_in_at do
          hide
        end
        configure :last_sign_in_at do
          hide
        end
        configure :current_sign_in_ip do
          hide
        end
        configure :last_sign_in_ip do
          hide
        end
        configure :created_at do
          hide
        end
        configure :updated_at do
          hide
        end
        configure :projects do
          hide
        end
      end
    end

end
