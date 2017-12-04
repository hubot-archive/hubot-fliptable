const fs = require('fs');
const path = require('path');

module.exports = function(robot, scripts) {
  const scriptsPath = path.resolve(__dirname, 'src');
  return fs.exists(scriptsPath, function(exists) {
    if (exists) {
      return (() => {
        const result = [];
        for (let script of fs.readdirSync(scriptsPath)) {
          if ((scripts != null) && !Array.from(scripts).includes('*')) {
            if (Array.from(scripts).includes(script)) {
              result.push(robot.loadFile(scriptsPath, script));
            }
          } else {
            result.push(robot.loadFile(scriptsPath, script));
          }
        }
        return result;
      })();
    }
  });
};
