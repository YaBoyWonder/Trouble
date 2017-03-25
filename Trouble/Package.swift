import PackageDescription

let package = Package(
name: "Trouble",
    
    exclude: [
    
        "{}"
],
targets: [
 
     Target(
    
        name: "Trouble"
    ),
    Target(
     
        name: "{}Tests",
        
            dependencies: [
            
                .Target(name: "{}")
        ]
    )
]
