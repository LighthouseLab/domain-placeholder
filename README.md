# Very Simple Domain Placeholder

This is a very simple domain placeholder. It is intended to be used as a
placeholder for a domain that is not yet ready to be deployed.

## Requirements

For building the index.html file:
- Node.js 12.x, 14.x, or 16.x
- npm 6.x or 7.x

For serving the index.html file:
- A web server that can serve static files

## Usage

1. Clone this repository

2. Copy `.env.example` to `.env` and edit the values to match your environment.

3. Run `yarn`, `pnpm install`, or `npm install` to install the dependencies.

4. Run `yarn build`, `pnpm run build`, or `npm run build` to build the
   `index.html` file. The file will be placed in the `dist` directory.

5. Copy `dist/index.html` to your web server. You can use `rsync` to
   copy the file to your web server, e.g. `rsync -avz dist/index.html user@host:/path/to/web/root/`.