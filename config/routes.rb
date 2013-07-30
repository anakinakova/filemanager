Filemanager::Engine.routes.draw do
  match 'filemanager/files(/:action)' => 'filemanager/files'
end