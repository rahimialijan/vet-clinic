## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [schema](#Database-schema)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Vet Clinic] <a name="about-project"></a>

> **[vet-clinic]** In this project, a relational database is used to create the data structure for a vet clinic. it is started with one table and step by step, the complete database with data about animals, animals' owners, clinic employees, and visits created.

### Database Schema

![image](https://github.com/rahimialijan/vet-clinic/blob/database-schema-diagram/Database_Diagram.JPG)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[create animals table]**
- **[query and update animals table]**
- **[query multiple tables]**
- **[add 'join table' for visits]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

Example command:

```sh
 Install PostgreSQL
```

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone git@github.com:rahimialijan/vet-clinic.git
```

### Install

Install this project with:

```sh
  cd my-folder
  git clone git@github.com:rahimialijan/vet-clinic.git
```

### Usage

To run the project, execute the following command:

```sh
  cd my-folder
  git clone git@github.com:rahimialijan/vet-clinic.git
```

### Run tests

To run tests, run the following command:

```sh
  npm test
```

### Deployment

You can deploy this project using:

```sh
  npm run deploy
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Alijan Rahimi**

- GitHub: [@Alijan-Rahimi](https://github.com/rahimialijan)
- Twitter: [@AlijanRahimi10](https://twitter.com/AlijanRahimi10)
- LinkedIn: [Alijan-Rahimi](https://www.linkedin.com/in/alijan-rahimi-18389ab3)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Giving beautiful and responsive UI]**
- [ ] **[Creating more professional sidebar panel]**
- [ ] **[Displaying data on the UI]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/rahimialijan/vet-clinic/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, give it a star.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

First, I would like to thank Microverse and my coding partners.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

- **How to optimize database performance?**

  - Use indexes on frequently queried columns to improve search speed.
  - Normalize the database structure to minimize data redundancy and improve data integrity.

- **How to ensure database security?**

  - Implement proper authentication and authorization mechanisms to control access to the database.
  - Regularly update and patch the database software to address security vulnerabilities.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
