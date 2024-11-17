
<br>
---

# Uploads

<!-- #raw -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>File Upload</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
      text-align: center;
    }
    .file-upload {
      margin: 20px 0;
    }
    .preview {
      margin-top: 20px;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 5px;
    }
  </style>
</head>
<body>
  <h1>File Upload Example</h1>
  <p>Select a file to upload and preview its name below:</p>

  <div class="file-upload">
    <input type="file" id="fileInput">
    <p id="fileName">No file selected</p>
  </div>

  <div class="preview" id="filePreview">
    <p>No file uploaded yet.</p>
  </div>

  <script>
    const fileInput = document.getElementById('fileInput');
    const fileName = document.getElementById('fileName');
    const filePreview = document.getElementById('filePreview');

    fileInput.addEventListener('change', () => {
      const file = fileInput.files[0];

      if (file) {
        fileName.textContent = `Selected file: ${file.name}`;

        // Optional: If the file is an image, preview it
        if (file.type.startsWith('image/')) {
          const reader = new FileReader();
          reader.onload = function (e) {
            filePreview.innerHTML = `<img src="${e.target.result}" alt="Preview" style="max-width: 100%; height: auto;">`;
          };
          reader.readAsDataURL(file);
        } else {
          filePreview.innerHTML = `<p>Preview is not available for this file type.</p>`;
        }
      } else {
        fileName.textContent = 'No file selected';
        filePreview.innerHTML = '<p>No file uploaded yet.</p>';
      }
    });
  </script>
</body>
</html>

<!-- #endraw -->
<br>
---

<!-- ***************************************** -->
