using System;
using System.Collections.Generic;

namespace api.Models
{
    public partial class Staff
    {
        public short Id { get; set; }
        public string Title { get; set; }
        public string Name { get; set; }
        public string TeamId { get; set; }
    }
}
