# zbatch
Batch CRUD

# Read
![image](https://github.com/user-attachments/assets/60548469-f605-4372-9854-99b6b1ec1dd0)
<br>
Header Name : Content Type <br>
Header Value : multipart/mixed; boundary=batch <br>
<br>
--batch
<br>
Content-Type: application/http <br>
Content-Transfer-Encoding: binary <br>
<br>
GET <EntitySet>(201) HTTP/1.1 <br>
<br>
--batch-- <br>

# Create
![image](https://github.com/user-attachments/assets/a3439cf8-5ddc-450e-a199-f5f3a5b8ee42)
<br>
Header Name : Content Type <br>
Header Value : multipart/mixed; boundary=batch <br>
<br>
--batch <br>
Content-type: multipart/mixed; boundary=changeset <br>
<br>
--changeset <br>
Content-Type: application/http <br>
Content-Transfer-Encoding: binary <br>
<br>
POST EntitySet> HTTP/1.1 <br>
Content-type: application/atom+xml;type=entry <br>
Content-length: 220 <br>
<br>
use response as got on the button USE AS REQUEST and provide the new data to create a new record <br>

--changeset--
--batch--
<br>
# Update
![image](https://github.com/user-attachments/assets/a2cff37e-400e-429d-b29e-49995cc7869d)

Header Name : Content Type  <br>
Header Value : multipart/mixed; boundary=batch  <br>

--batch <br>
Content-type: multipart/mixed; boundary=changeset  <br>

--changeset  <br>
Content-Type: application/http  <br>
Content-Transfer-Encoding: binary  <br>

PUT EntitySet>(201) HTTP/1.1  <br>
Content-type: application/atom+xml;type=entry  <br>
Content-length: 220  <br>
 <br>
use response as got on the button USE AS REQUEST and provide the new data to create a new record  <br>
 
--changeset--  <br>
--batch--  <br>

# Delete
![image](https://github.com/user-attachments/assets/dc108938-27c7-46d2-9c91-4301e294378e)


Header Name : Content Type  <br>
Header Value : multipart/mixed; boundary=batch  <br>

--batch  <br>
Content-type: multipart/mixed; boundary=changeset  <br>

--changeset  <br>
Content-Type: application/http  <br>
Content-Transfer-Encoding: binary  <br>

DELETE EntitySet(ID) HTTP/1.1  <br>

--changeset--  <br>
--batch--  <br>
