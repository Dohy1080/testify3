﻿using CoreEntities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Repository
{
    public interface INotificationRepository
    {
        Task<List<Notification>> GetNotificationsAsync();
    }
}
