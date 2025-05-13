from fastapi import FastAPI
from src.auth.auth_api.auth_api import router as auth_router
from src.auth.auth_model.auth_model import Base
from src.db_session import engine
app = FastAPI()

Base.metadata.create_all(bind=engine)  
app.include_router(auth_router)
