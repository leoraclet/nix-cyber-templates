{
  description = "Ready-made templates for easily creating flake-driven hacking environments";

  outputs = { ... }: {
    templates = {
      crypto = {
        path = ./crypto;
        description = "Cryptanalysis environment";
      };
      forensic = {
        path = ./forensic;
        description = "Forensic environment";
      };
      hardware = {
        path = ./reverse;
        description = "Hardware hacking environment";
      };
      network = {
        path = ./network;
        description = "Network hacking environment";
      };
      osint = {
        path = ./osint;
        description = "OSINT environment";
      };
      pentest = {
        path = ./pentest;
        description = "Pentest environment";
      };
      pwn = {
        path = ./pwn;
        description = "Binary exploitation environment";
      };
      reverse = {
        path = ./reverse;
        description = "Reverse engineering environment";
      };
      stegano = {
        path = ./stegano;
        description = "Steganalysis environment";
      };
      web = {
        path = ./web;
        description = "Web hacking environment";
      };
    };
  };
}
