
<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h2>AES on FPGA</h3>

  <p>
    Verilog implementation of AES-128 algorithm for hardware acceleration.
    <br />
    <a href="https://iste.nitk.ac.in/#/project/102"><strong>View Demo »</strong></a>
    <br />
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Many IoT devices have limited amounts of storage, memory, and processing capability and they are not capable of
performing complex encryption and decryption quickly enough to be able to transmit data securely in real-time.
This project aims at designing an FPGA-based embedded system integrating hardware that accelerates cryptographic algorithm. Once verified, a VLSI implementation of the same will be made.

More about this:
* Most blocks built on combinational logic over LUT, decreasing the amount of delay significantly. 
* Architecture is pipelined, making full use of resources available.
* Complete encryption on AES of one message block in about 50 clock cycles.

### Built With

Framework(s) used:
* [Xilinx Vivado 2018.2](https://www.xilinx.com/support/download.html)

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

Have Xilinx Vivado 2018.2 or a later version downloaded and installed   
[Xilinx 2020.2- Installation And Licensing](https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0013-vivado-installation-and-licensing-hub.html)

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/PriyankaPeri/AES_FPGA-.git
   ```
2. Open file AES_block_tb.v on Vivado. Change value given on input at:
   ```vtr
   clock=1;
    in='h00000000000000000000000000000000; <Start of string, do not change>
    #2
    in='h41424344654667484142434465466748; <This is your encryption key> 
    #2
    in='h202122232425262728292A2B2C2D2E2F; <This and the following are your message input until next start of string is encountered>
   ```
3. Run Simulation to view encrypted message on Tcl Console. You can also further Run Synthesis to obtain synthesised design.    



<!-- USAGE EXAMPLES -->
## Usage
The different blocks can be also used individually. With slight modification, most can be made of to perform decryption too.

1. SboxK.v - Contains the substitution box of AES encrytion as LUTs.
2. ShiftRow.v - Performs 'shift rows' operation.
3. MixColumnsA.v - First part of 'mix columns' operation. Multiplies every element by constants.
4. MixColmunsXOR.v - Second and final part of 'mix columns' operation. Result from previous block are XOR-ed with each other to produce new columns.
5. AddroundKey.v - XORs Round Key with result from previous block.

The blocks also internally perform Key Expansion parallely, removing the need for a separate block for the function.


<!-- ROADMAP -->
## Roadmap

Currently requires refractoring.

<!-- CONTACT -->
## Contact

Here: [Priyankaa](www.linkedin.com/in/priyankaa-p-57ba2619b)

Project Link: [https://github.com/your_username/repo_name](https://iste.nitk.ac.in/#/project/102)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png



