﻿using CoreEntities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Interface
{
    public interface IGradeService
    {
        Task<List<Grade>> GetAllGradesAsync();

    }
}
