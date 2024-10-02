import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let projectPath = "."
let appPath = "Sources/"

var items: [Template.Item] = [
    //Project Template
    .file(path: projectPath + "/Project.swift", templatePath: "Project.stencil"),
    .file(path: appPath + "\(nameAttribute).swift", templatePath: "Main.stencil"),
    .file(path: projectPath + "/Tuist/Package.swift", templatePath: "Package.stencil"),
]

let template = Template(
    description: "Custom template",
    attributes: [
        nameAttribute
    ],
    items: items
)
