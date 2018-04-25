This is version 6.34 of the Inform compiler (with patches),
copyright (c) Graham Nelson 1993 - 2017
Full release notes and instructions are available at
http://www.ifarchive.org/indexes/if-archiveXinfocomXcompilersXinform6.html

Changes I've made since 6.34:

  * A patch to make INDIV_PROP_START configurable as a memory setting, following
    Andrew Plotkin's paragraph in his glulx-technical.txt:

        The value of INDIV_PROP_START is currently hardwired to 256, in the
        compiler. It will eventually be made flexible. The veneer and library
        use the constant INDIV_PROP_START, so they can adapt to any value the
        compiler defines.

  * Add option to search alternate ".infh" extension for Includes
  
     That Inform uses the same ".h" extension as C for its library and
     extension files sometimes causes issues when editing such files,
     because editors and source navigation tools assume that those
     Inform files are C headers.

     Certain editors (ex. jEdit) can perform more sophisticated file type
     analysis, but others (ex. Notepad++) base the file type purely on
     the extension, and thus will always open .h files as C code.

     Particularly when trying to load both the Inform compiler and standard
     library into an IDE project (in my case, Source Insight), that their
     extensions overlap causes problems with symbol referencing, etc.

     This patch adds an '-I' switch that causes the compiler to search for a
     ".infh" file--falling back to ".h" if not present--when Include'ing a
     file from Inform source. In this way, an author can choose to rename the
     standard library files and any extensions to ".infh" to get customized
     syntax highlighting, etc.


You can download a Win32 binary (ZIP'd) of the compiler with my patches from

  https://app.box.com/shared/static/o4g9epawg8zkhpvzfhf39brgdhwlw2x1.zip
