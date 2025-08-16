from sqlalchemy.orm import relationship

from .user import User
from .task import Task

User.tasks = relationship("Task", order_by=Task.id, back_populates="user")