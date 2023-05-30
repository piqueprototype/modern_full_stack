from setuptools import setup, find_packages

setup(name='Backend Utils',
      version='1.0',
      description='Backend Server Utilities',
      author='Jacob Storer',
      packages=find_packages(include=['api', 'backend']),
      install_requires=[
          'djangorestframework',
          'django-cors-headers',
          'psycopg2',
          'requests',
          'schedule',
          'pysftp',
          'redis',
          'python-dotenv',
      ]
     )