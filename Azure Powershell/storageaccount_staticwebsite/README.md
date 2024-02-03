block blobs are like a flexible box, 
page blobs are like a notebook where you can easily find and update any page, and 
append blobs are like a scroll where you keep adding new things to the end

storage services
containers
files - file system mount points / network drives
queues - for messaging / order
tables - for mapping / structured data


Azure Storage Account, when used to host static websites, is considered a Platform as a Service (PaaS) offering. In the context of hosting static websites, Azure Storage provides a fully managed platform where you can store and serve static content without the need to manage the underlying infrastructure.

choose Azure Storage Account if your website is entirely static and you want a cost-effective solution.


You can serve static content (HTML, CSS, JavaScript, and image files) directly from a storage container named $web. Hosting your content in Azure Storage enables you to use serverless architectures that include Azure Functions and other Platform as a service (PaaS) services. Azure Storage static website hosting is a great option in cases where you don't require a web server to render content.

You can enable static website hosting free of charge. You're billed only for the blob storage that your site utilizes and operations costs. For more details on prices for Azure Blob Storage

https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website-how-to?tabs=azure-powershell
