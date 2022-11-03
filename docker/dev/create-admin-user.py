from django.contrib.auth.models import User

admin = User.objects.filter(username='admin')
if bool(admin) == False:
  User.objects.create_superuser('admin', 'mk@mktoho.org', 'd@nk0ga!')
