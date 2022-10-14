import os

def uploadFile(exepath, filepath):
    try:
        os.system(exepath + ' ' + filepath)
        print(exepath + ' ' + filepath)
        return 'File Uploaded'
    except Exception as e:
        return e