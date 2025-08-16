from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import declarative_base
from sqlalchemy.schema import UniqueConstraint

Base = declarative_base()

class User(Base):
    __tablename__ = 'users'

    ??? = Column(Integer, primary_key=True)
    ??? = Column(String, nullable=False, unique=True)
    ??? = Column(String, nullable=False)  # Stores hash of the password

    __table_args__ = (
        UniqueConstraint('username', name='unique_username'),
    )