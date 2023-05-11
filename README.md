Do yourself a favor and install NVM (Node Version Manager)... If you're using windows
## Create Next.js application
```bash
npx create-next-app@latest  # Offers multiple prompts / builds the application
npm run dev # Run the application in dev mode
```

## Create Django application
```bash
# If not already, build the venv environment
python -m venv venv # first venv is the command ; second venv is the name of folder to house the virtual environment ;

# Connect to virtual environment
source venv/Scripts/activate

# Install Django package
pip install Django==4.2.1  # At time of this document, this is the latest version

# Create Django application
django-admin startproject backend
cd backend/
python manage.py startapp api  # Creates an application within the system of "backend"
python manage.py migrate  # Update the database
```


