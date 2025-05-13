from sqlalchemy.orm import Session
from src.auth.auth_model.auth_model import User
from passlib.context import CryptContext

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

def get_user_by_username(db: Session, username: str):
    return db.query(User).filter(User.username == username).first()

def create_user(db: Session, username: str, password: str,role:str='user'):
    hashed_password = pwd_context.hash(password)
    user = User(username=username, hashed_password=hashed_password,role=role)
    db.add(user)
    db.commit()
    db.refresh(user)
    return user
