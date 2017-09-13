const fs = require('fs');

function copyPackageJson() {
  const packageObj = JSON.parse(fs.readFileSync('package.json', 'utf8'));

  delete packageObj.devDependencies;
  delete packageObj.scripts;
  delete packageObj.private;

  if (!fs.existsSync('dist')){
    fs.mkdirSync('dist');
  }

  fs.writeFileSync('dist/package.json', JSON.stringify(packageObj, null, 2));
}

module.exports = copyPackageJson;