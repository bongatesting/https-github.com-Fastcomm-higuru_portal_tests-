**ERROR**

_While executing gem ... (Gem::FilePermissionError)
    You don't have write permissions for the /Library/Ruby/Gems/2.6.0 directory._

**Solution**
sudo chown -R $USER /Library/Ruby/Gems/
