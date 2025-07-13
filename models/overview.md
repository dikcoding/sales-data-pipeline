{% docs __overview__ %}

# Airbnb Pipeline

Hey, welcome to our Airbnb pipeline documentation!  
This documentation provides a high-level overview of the architecture, data flow, integration process, and modeling design used in this project.

---

## 🔧 Data Architecture

![Data Architecture](assets/data_architecture.png)  
_This diagram illustrates the overall architecture of the data pipeline, starting from raw data ingestion (bronze layer) to transformation (silver layer) and finally modeling into fact and dimension tables (gold layer). The architecture ensures modular, scalable, and traceable data management._

---

## 🔄 Data Flow

![Data Flow](assets/data_flow.png)  
_This diagram shows the flow of data across various stages: from source systems to staging (bronze), to cleaned (silver), and then transformed analytical models (gold). It helps visualize the dependencies and transformation paths of each dataset._

---

## 🔗 Data Integration

![Data Integration](assets/data_integration.png)  
_This diagram describes how multiple data sources (e.g., CRM, ERP) are integrated into a unified warehouse schema. It highlights key joins and mappings between the customer, product, sales, and location datasets across systems._

---

## 📊 Data Model

![Data Model](assets/data_model.png)  
_This shows the final dimensional model including fact and dimension tables. For example, `fact_sales` links to `dim_customers` and `dim_products` using surrogate keys, enabling powerful analytical queries with well-structured relationships._

---

{% enddocs %}
