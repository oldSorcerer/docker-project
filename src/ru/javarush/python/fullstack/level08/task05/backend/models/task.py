from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import declarative_base, relationship

Base = declarative_base()

class Task(Base):
    __tablename__ = 'tasks'
    
    ??? = Column(Integer, primary_key=True)
    ??? = Column(String, nullable=False)
    ??? = Column(Integer, ForeignKey('users.id'), nullable=False)  # ForeignKey to User table
    
    user = relationship("User", back_populates="tasks")