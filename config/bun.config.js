export const config = {
  entrypoints: [
    "assets/javascripts/flowbite.js",
    "assets/javascripts/flowbite.turbo.js",
    "assets/javascripts/flowbite.turbo.esm.js",
    "assets/javascripts/flowbite-plugin.js",
    "assets/javascripts/flowbite-datepicker.js",
    "assets/javascripts/flowbite-datepicker.esm.js",
    "assets/javascripts/flowbite.esm.js"
  ],
  outdir: "assets/builds",
  minify: true
};

const build = async (config) => {
  const result = await Bun.build(config);

  if (!result.success) {
    throw new AggregateError(result.logs, "Build failed");
  }
};

(async () => {
  await build(config);

  process.exit(0);
})();
