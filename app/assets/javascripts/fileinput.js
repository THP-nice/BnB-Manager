$(document).ready(function() {
  $("#input-5").fileinput({showCaption: false});

  $("#input-6").fileinput({
    showUpload: false,
    maxFileCount: 10,
    mainClass: "input-group-lg",
    showCaption: true
  });

  $("#input-8").fileinput({
    mainClass: "input-group-md",
    showUpload: true,
    previewFileType: "image",
    browseClass: "btn btn-success",
    browseLabel: "Pick Image",
    browseIcon: "<i class=\"icon-picture\"></i> ",
    removeClass: "btn btn-danger",
    removeLabel: "Delete",
    removeIcon: "<i class=\"icon-trash\"></i> ",
    uploadClass: "btn btn-info",
    uploadLabel: "Upload",
    uploadIcon: "<i class=\"icon-upload\"></i> ",
    allowedFileTypes: ["image"]
  });

  $("#input-9").fileinput({
    previewFileType: "text",
    allowedFileExtensions: ["txt", "md", "ini", "text"],
    previewClass: "bg-warning",
    browseClass: "btn btn-primary",
    removeClass: "btn btn-secondary",
    uploadClass: "btn btn-secondary",
  });

  $("#input-10").fileinput({
    showUpload: false,
    layoutTemplates: {
      main1: "{preview}\n" +
      "<div class=\'input-group {class}\'>\n" +
      "   <div class=\'input-group-append\'>\n" +
      "       {browse}\n" +
      "       {upload}\n" +
      "       {remove}\n" +
      "   </div>\n" +
      "   {caption}\n" +
      "</div>"
    }
  });

  $("#input-11").fileinput({
    maxFileCount: 10,
    allowedFileTypes: ["image", "video"]
  });

  $("#input-12").fileinput({
    showPreview: false,
    allowedFileExtensions: ["zip", "rar", "gz", "tgz"],
    elErrorContainer: "#errorBlock"
  });
});