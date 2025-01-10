export function modifyConfig(config: Config): Config {
  config.models
    .filter((model) => model.apiType !== "azure" && model.provider === "openai")
    .forEach((openaiModel) => {
      openaiModel.apiKey = process.env.OPENAI_API_KEY;
    });

  config.contextProviders.find(
    (provider) => provider.name === "google"
  ).params.serperApiKey = process.env.SERPER_API_KEY;
  return config;
}
