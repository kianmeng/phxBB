import Config

config :phx_bb, PhxBbWeb.Endpoint,
  server: true,
  http: [port: {:system, "PORT"}],
  # url: [host: System.get_env("APP_NAME") <> ".gigalixirapp.com", port: 443]
  url: [host: "localhost", post: 4000]