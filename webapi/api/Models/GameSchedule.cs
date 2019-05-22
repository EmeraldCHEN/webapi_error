using System;
using System.Collections.Generic;

namespace api.Models
{
    public partial class GameSchedule
    {
        public string Id { get; set; }
        public short FieldNumber { get; set; }
        public string Time { get; set; }
        public string TeamA { get; set; }
        public string TeamB { get; set; }
        public short TeamAScore { get; set; }
        public short TeamBScore { get; set; }
    }
}
