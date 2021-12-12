# Tone Extraction
MATLAB program for extracting a specific tone of audio file
 
## Input
![image](https://user-images.githubusercontent.com/47606879/145711591-82a228a8-17ab-47f6-9ef3-eea4de0c0067.png)

I wanted to extract 200 Hz tone; therefore, I designed 3 types of digital filters as below. The "* .fda" file of the filters are in the "Filters" directory.

## 1) MA with 30 points
"Rect.m"

![image](https://user-images.githubusercontent.com/47606879/145711703-c0588b01-b89e-433f-8116-c22ea450d5b2.png)

### Result 

![image](https://user-images.githubusercontent.com/47606879/145711721-17e81ab2-1518-44ad-b049-4ed8184db327.png)

## 2) Butterworth with the order of 4,10,30
“Butter4.m” , “Butter10.m” , “Butter30.m”
### order of 4
![image](https://user-images.githubusercontent.com/47606879/145711780-c0a727ac-ec2e-4b34-bc9c-4da284ada615.png)

#### result 
![image](https://user-images.githubusercontent.com/47606879/145711793-7c535806-669e-44a5-b4b5-33014d3fa9ad.png)

### order of 10
![image](https://user-images.githubusercontent.com/47606879/145711803-5dd6b6c2-3f27-4824-84c1-efb3b58b8597.png)

#### result 
![image](https://user-images.githubusercontent.com/47606879/145711809-2bd6333c-e74e-4e62-ae5f-035fece7e526.png)


### order of 30
![image](https://user-images.githubusercontent.com/47606879/145711817-0124b8f2-c992-4643-9c1e-5ce4bcc781e2.png)

#### result 
![image](https://user-images.githubusercontent.com/47606879/145711821-6fdea8fd-dccd-4d63-aa44-13d5ef26de7a.png)


## 3) FIR filter with Kaiser window with beta = 0.5
“Kaiser.m” 

![image](https://user-images.githubusercontent.com/47606879/145711839-cc33a43e-b61b-4715-9768-c1a10e47e64a.png)

### result
![image](https://user-images.githubusercontent.com/47606879/145711852-b7eb3829-e7f2-4578-9ccc-fe1609b93305.png)


## Improved MA
I also designed a MA (rect) filter with 1500 points to improve the result.

“GoodRect.m”

![image](https://user-images.githubusercontent.com/47606879/145711915-c266d5ef-4a15-4472-ac60-f675156d3ccb.png)

### Resutl

![image](https://user-images.githubusercontent.com/47606879/145711925-6d14c05b-200e-4a83-8144-401d9662e401.png)


