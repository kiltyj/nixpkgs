{ lib
, buildPythonPackage
, fetchFromGitHub
}:

buildPythonPackage rec {
  pname = "stickytape";
  version = "0.2.1";
  format = "setuptools";

  src = fetchFromGitHub {
    owner = "mwilliamson";
    repo = pname;
    rev = version;
    hash = "sha256-KOZN9oxPb91l8QVU07I49UMNXqox8j+oekA1fMtj6l8=";
  };

  # Tests have additional requirements
  doCheck = false;

  pythonImportsCheck = [
    "stickytape"
  ];

  meta = with lib; {
    description = "Python module to convert Python packages into a single script";
    mainProgram = "stickytape";
    homepage = "https://github.com/mwilliamson/stickytape";
    license = with licenses; [ bsd2 ];
    maintainers = with maintainers; [ fab ];
  };
}
