using System;
using System.Collections.Generic;

namespace api.Models
{
    public partial class PoolPoints
    {
        public int Id { get; set; }
        public string TeamId { get; set; }
        public short GameId { get; set; }
        public short Points { get; set; }
    }
}
