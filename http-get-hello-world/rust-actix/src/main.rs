use actix_web::{get, middleware::Logger, App, HttpResponse, HttpServer, Responder};
use env_logger::Env;

#[get("/")]
async fn root() -> impl Responder {
    HttpResponse::Ok().body("hello world\n")
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    env_logger::init_from_env(Env::default().default_filter_or("info"));

    HttpServer::new(|| App::new().wrap(Logger::default()).service(root))
        .bind(("127.0.0.1", 8080))?
        .run()
        .await
}
