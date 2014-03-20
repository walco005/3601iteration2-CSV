mongoose = require 'mongoose'
Schema = mongoose.Schema

Section = new Schema(
  Grade: String
  Text: String
)


Section = mongoose.model 'Section', Section

module.exports =
  Section : Section