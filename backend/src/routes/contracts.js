import { Router } from 'express'
import Renderer from 'hypernova-client';
import devModePlugin from '../utils/devModePlugin';

const HYPER_PORT = process.env.HYPER_PORT || 9600,
  HYPER_HOST = process.env.HYPER_HOST || "0.0.0.0",
  HYPER_ENDPOINT = "/batch",
  HYPER_URL = `http://${HYPER_HOST}:${HYPER_PORT}${HYPER_ENDPOINT}`;

export default () => {
  if (HYPER_URL) {
    const renderer = new Renderer({
      url: HYPER_URL,
      plugins: [
        devModePlugin,
      ],
    })
    let api = Router()
    let storageContract = (req, res) => {
      const jobs = {
        aphrodite: { name: req.query.name || HYPER_URL }
      }
      renderer.render(jobs).then(html => res.send(html))
    }
    api.get('/', storageContract)

    return api
  }
}