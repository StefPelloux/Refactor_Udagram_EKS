import {Sequelize} from 'sequelize-typescript';
import {config} from './config/config';


export const sequelize = new Sequelize({
  username: 'postgres',
  password: 'petitponey',
  database: 'postgres',
  host: '172.20.203.176',
  dialect: 'postgres',
  storage: ':memory:'
});