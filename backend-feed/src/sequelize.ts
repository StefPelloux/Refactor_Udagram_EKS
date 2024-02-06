import {Sequelize} from 'sequelize-typescript';
import {config} from './config/config';


export const sequelize = new Sequelize({
  username: 'postgres',
  password: 'petitponey',
  database: 'postgres',
  host: "db.default.svc.cluster.local",
  dialect: 'postgres',
  storage: ':memory:'
});