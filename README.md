LaTeX template for UiT exams at the Faculty of Science and Technology. 
=========================

I got tired of dealing with MS Word based exam templates that didn't work properly. Including source code in the documents was also a problem. 

When the administration started requiring a separate grading guideline, I gave up on the Word solution. Keeping two separate Word documents coherent is not something I want to spend time on. 

I have tried to keep the template as close to the original as possible with a few minor additions:

- I have added the Hugin and Munin logo in the lower right part of the page. This is required in the UiT style guides, and it's there in the word templates, but it doesn't show for some reason. 
- I have used the English version of the logos in the English version of the front pages. 
- A few minor language corrections. 


Using the template
------------------

You should only need to edit the following two files (unless you want to add packages in exam-preamble.tex):

- exam-content-info.tex
- exam-content.tex

The first file contains the information for the front page. Edit the details and uncomment _one_ of the language options at the end. I currently have support for Norwegian Bokmål and English front pages.

The text for the exam should be put in exam-content.tex. When running "make", you will get two pdf documents:

- exam.pdf
- exam-with-guide.pdf

The first one is the normal version that the students will get on the exam.

The second one includes the contents of the `eguide` environment and should only be available to the administration and the ones grading the exam. The eguide environment is where you put answers to questions or guidelines for grading this part of the exam. I prefer to keep them close so that I can easily see that the guide corresponds to the question. See the included tex files for examples.






