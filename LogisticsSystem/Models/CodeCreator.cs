using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LogisticsSystem.App_Code;

namespace LogisticsSystem.Models
{
    public class CodeCreator : AbstractModel
    {
        int code;
        int codeBuffer;
        int type;

        protected override bool KeySetting(string columnName)
        {
            throw new NotImplementedException();
        }

        public int Code
        {
            get{return code;}
            set{code = value;}
        }

        public int CodeBuffer{
            get{return codeBuffer;}
            set{codeBuffer = value;}
        }

        public int Type
        {
            get{return type;}
            set{type = value;}
        }
    }
}