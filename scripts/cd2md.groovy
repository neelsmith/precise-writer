/*
 * Given two file names, an input file in citedown, and an output
 * file, convert citedown to markdown, and put results in output
 * file.
 */
import edu.holycross.shot.citedown.CitedownConverter

if (args.size() != 2) {
  System.err.println "cd2md.groovy: usage:  groovy cd2md.groovy SRCFILE OUTPUTFILE"
  System.exit(-1)
}

File src = new File(args[0])
File outFile = new File(args[1])

// add localized configuration of services...
CitedownConverter c2m = new CitedownConverter()

String md = c2m.toMarkdown(src.getText("UTF-8"))
outFile.setText(md,"UTF-8")


