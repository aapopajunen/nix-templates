{
  description = "My Nix project templates";

  outputs = { self }: {
    templates = {
      python = {
        path = ./python;
        description = "Basic Python dev environment";
      };

      nodejs = {
        path = ./nodejs;
        description = "Basic Node.js development environment for web applications";
      };

      nextjs = self.templates.nodejs;

      default = self.templates.python;
    };
  };
}
