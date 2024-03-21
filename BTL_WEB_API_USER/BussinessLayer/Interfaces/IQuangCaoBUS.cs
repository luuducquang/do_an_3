﻿using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLayer.Interfaces
{
    public partial interface IQuangCaoBUS
    {
        List<QuangCaoModel> GetDataAll();
        List<QuangCaoModel> Search(int page, int pageSize, out long total, string MoTa);
    }
}
