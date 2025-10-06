# Angry Sockets Website

## Template System & Static Site Generation

This website uses a PHP-based template system for development, but generates a completely static website for deployment. No server-side processing is needed for the final site.

### How the Template System Works

1. **Header Template (`templates/header.php`):**
   - Contains the common HTML head section
   - Includes the site title, navigation, and meta tags
   - Requires a `$pageTitle` variable to be set before including

2. **Footer Template (`templates/footer.php`):**
   - Contains the button collection
   - Includes the copyright footer
   - Closes the HTML body and document

### Development Workflow

To create a new page:

1. Create a new PHP file (e.g., `newpage.php`)
2. Set the required variables at the top of the file:
   ```php
   <?php
   $pageTitle = "Your Page Title";
   $metaDescription = "Optional description for SEO";
   include 'templates/header.php';
   ?>
   ```
3. Add your page-specific content
4. Include the footer at the end:
   ```php
   <?php include 'templates/footer.php'; ?>
   ```

### Static Site Generation

To build the static website:

1. Run the build script:
   ```
   php build.php
   ```

2. This will:
   - Process all PHP files and convert them to static HTML
   - Copy all necessary assets (CSS, images, fonts)
   - Place everything in a `build` directory
   - Update links to point to .html files instead of .php files

3. Deploy the contents of the `build` directory to your web host

### Benefits

- **Development**: Enjoy the benefits of templates and components
- **Deployment**: Deploy completely static files with no server requirements
- **Performance**: Fast loading with no server-side processing required
- **Security**: No PHP execution on the production server
- **Compatibility**: Works on any basic web hosting, including GitHub Pages

### Requirements

- PHP server (any version)
- No JavaScript required

### File Extensions

- All HTML files have been converted to PHP (.php extension)
- Links in navigation have been updated accordingly 