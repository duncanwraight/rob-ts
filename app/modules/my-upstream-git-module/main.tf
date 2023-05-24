module "my-upstream-git-module" {
  source = "git::https://github.com/duncanwraight/rob-ts/some-module-name-here?ref=2.x"

  can_still = {
    pass_parameters = "like this"
  }
}
