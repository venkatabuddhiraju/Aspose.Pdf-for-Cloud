using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Pages {
    public List<Page> List { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Pages {\n");
      sb.Append("  List: ").Append(List).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
