{
  description = "My Nix project templates";

  outputs = { self }: {
    templates = {
      python = {
        path = ./python;
        description = "Basic Python dev environment";
      };

      default = self.templates.python;
    };
  };
}