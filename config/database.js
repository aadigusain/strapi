module.exports = ({ env }) => ({
  connection: {
    client: 'mysql',
    connection: {
      host: env('DATABASE_HOST', 'db4free.net'),
      port: env.int('DATABASE_PORT', 3306),
      database: env('DATABASE_NAME', 'blog_site'),
      user: env('DATABASE_USERNAME', 'aadigusain'),
      password: env('DATABASE_PASSWORD', '06@sep1997'),
      ssl: env.bool('DATABASE_SSL', false),
    },
  },
});
