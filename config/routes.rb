Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions,
  # otherwise 500. Can be used by load balancers and uptime monitors to verify that
  # the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Esta ruta es un punto de control para verificar el estado de salud de la aplicación.
  # Responde a la URL /up y devuelve un código 200 si la aplicación se inicia sin excepciones,
  # de lo contrario, devuelve un código 500. Puede ser utilizado por equilibradores de carga
  # y monitores de tiempo de actividad para verificar que la aplicación está en ejecución.

  # Define la ruta raíz ("/") y establece la acción index del controlador Welcome como la página de inicio
  root 'welcome#index'
  # Esta línea establece la ruta raíz de la aplicación ("/") y dirige al controlador Welcome
  # y la acción index. Cuando un usuario visita la raíz de la aplicación, se mostrará la
  # página de inicio definida en app/views/welcome/index.html.erb.
end
