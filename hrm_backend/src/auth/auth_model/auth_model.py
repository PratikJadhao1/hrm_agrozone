from pydantic import BaseModel
from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class User(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True, index=True)
    username = Column(String, unique=True, index=True)
    hashed_password = Column(String)
    role = Column(String, default="user")

class UserIn(BaseModel):
    username: str
    password: str
    role:str='user'

class UserOut(BaseModel):
    username: str
    role: str = 'user'

class Token(BaseModel):
    access_token: str
    token_type: str
